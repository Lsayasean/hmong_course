// Load all the controllers within this directory and all subdirectories.
// Controller files must be named *_controller.js.

import { Application } from 'stimulus';
import { definitionsFromContext } from 'stimulus/webpack-helpers';

const application = Application.start();
const context = require.context('controllers', true, /_controller\.js$/);
application.load(definitionsFromContext(context));

// pass stimulus errors to rollbar
const defaultErrorHandler = application.handleError;
const sentryErrorHandler = (err) => {
  defaultErrorHandler(err);
  Rollbar.error(err);
};

application.handleError = sentryErrorHandler;
